#include "Util.h"
#include <sstream>
using namespace std;

//CSLog g_imLog = CSLog(LOG_MODULE_IM);

CRefObject::CRefObject()
{
	m_lock = NULL;
	m_refCount = 1;
}

CRefObject::~CRefObject()
{
}

void CRefObject::AddRef()
{
	if(m_lock)
	{
		m_lock->lock();
		m_refCount++;
		m_lock->unlock();
	}
	else
	{
		m_refCount++;
	}
}

void CRefObject::ReleaseRef()
{
	if(m_lock)
	{
		m_lock->lock();
		m_refCount--;
		if(m_refCount == 0)
		{
			delete this;
			return;
		}
		m_lock->unlock();
	}
	else
	{
		m_refCount--;
		if(m_refCount == 0)
			delete this;
	}
}


uint64_t get_tick_count()
{
#ifdef _WIN32
	LARGE_INTERGER liCounter;
	LARGE_INTERGER liCurrent;

	if(!QueryPerformanceFrequency(&liCounter))
		return GetTickCount();
	
	QueryPerformanceCounter(&liCurrent);
	return (uint64_t)(liCurrent.QuadPart * 1000 / liCounter.QuadPart);
#else
	struct timeval tval;
	uint64_t ret_tick;

	gettimeofday(&tval, NULL);

	ret_tick = tval.tv_sec * 1000L + tval.tv_usec / 1000L;
	return ret_tick;
#endif
}

void util_sleep(uint32_t millisecond)
{
#ifdef _WIN32
	Sleep(millisecond);
#else
	usleep(millisecond* 1000);
#endif
}


CStrExplode::CStrExplode(char* str, char seperator)
{
	m_item_cnt = 1;
	char* pos = str;
	while(*pos)
	{
		if(*pos == seperator)
		{
			m_item_cnt++;
		}
		pos++;
	}
	
	m_item_list = new char*[m_item_cnt];

	int idx = 0;
	char* start = pos = str;
	while(*pos)
	{
		if( pos != start && *pos == seperator)
		{
			uint32_t len = pos - start;
			m_item_list[idx] = new char[len+1];
			strncpy(m_item_list[idx], start, len);
			m_item_list[idx][len] = '\0';
			idx++;

			start = pos + 1;
		}
		pos++;
	}

	uint32_t len = pos - start;
	if( len != 0)
	{
		m_item_list[idx] = new char[len + 1];
		strncpy(m_item_list[idx], start, len);
		m_item_list[idx][len] = '\0';
	}
}


CStrExplode::~CStrExplode()
{
	for(uint32_t i = 0; i < m_item_cnt; i++)
	{
		delete [] m_item_list[i];
	}

	delete [] m_item_list;
}

char* replaceStr(char* pSrc, char oldChar, char newChar)
{
	if( NULL == pSrc)
	{
		return NULL;
	}

	char* pHead = pSrc;
	while(*pHead != '\0')
	{
		if(*pHead == oldChar)
		{
			*pHead = newChar;
		}
		++pHead;
	}
	return pSrc;
}

string int2string(uint32_t user_id)
{
	stringstream ss;
	ss <<user_id;
	return ss.str();

}

uint32_t string2int(const string& value)
{
	return (uint32_t)atoi(value.c_str());
}

void replace_mark(string& str, string& new_value, uint32_t& begin_pos)
{
	string::size_type pos = str.find('?', begin_pos);
	if( pos == string::npos)
	{
		return;
	}

	string prime_new_value = "'" + new_value + "'";
	str.replace(pos, 1, prime_new_value);

	begin_pos = pos + prime_new_value.size();
}

void writePid()
{
	uint32_t curPid;
#ifdef _WIN32
	curPid = (uint32_t) GetCurrentProcess();
#else
	curPid = (uint32_t) getpid();
#endif
	FILE* f = fopen("server.pid", "w");
	assert(f);
	char szPid[32];
	snprintf(szPid, sizeof(szPid), "%d",curPid);
	fwrite(szPid, strlen(szPid), 1, f);
	fclose(f);
}

inline unsigned char toHex(const unsigned char& x)
{
	return x>9?x-10+'A':x+'0';
}

inline unsigned char fromHex(const unsigned char &x)
{
	return isdigit(x) ? x- '0' : x-'A' + 10;
}

string URLEncode(const string &sIn)
{
	string sOut;
	for( size_t ix = 0; ix < sIn.size(); ix++)
	{
		unsigned char buf[4];
		memset(buf, 0, 4);
		if(isalnum((unsigned char)sIn[ix]))
		{
			buf[0] = sIn[ix];
		}
		else
		{
			buf[0] = '%';
			buf[1] = toHex((unsigned char)sIn[ix] >> 4);
			buf[2] = toHex((unsigned char)sIn[ix] % 16);
		}
		sOut += (char*)buf;
	}
	return sOut;
}

string URLDecode(const string&sIn)
{
	string sOut;
	for( size_t ix = 0; ix < sIn.size(); ix++)
	{
		unsigned char ch = 0;
		if(sIn[ix] == '%')
		{
			ch = (fromHex(sIn[ix+1]) << 4);
			ch |= fromHex(sIn[ix+2]);
			ix += 2;
		}
		else if(sIn[ix] == '+')
		{
			ch = ' ';
		}
		else
		{
			ch = sIn[ix];
		}
		sOut += (char)ch;
	}
	return sOut;
}

int64_t get_file_size(const char* path)
{
	int64_t filesize = -1;
	struct stat statbuff;
	if(stat(path, &statbuff) < 0)
	{
		return filesize;
	}
	else
	{
		filesize = statbuff.st_size;
	}
	return filesize;
}


