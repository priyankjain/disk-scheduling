#include<stdio.h>
#include<stdlib.h>
#include<string>
#define SECTORSPERTRACK 200
#define TRACKSPERCYLINDER 8
#define CYLINDERS 500000
#define RPM 10000
#define PHYSICALSECTORSIZE 512
#define LOGICALBLOCKSIZE 4096
#define TRACKTOTRACKSEEK 2/1000
#define FULLSEEK 16/1000
#define TRANSFERRATE 1024*1024*1024
int main(int argc,char* argv[])
{
    FILE* fin=NULL,*fout=NULL;
    if(argc<4 || argc>5)
    {
        fprintf(stdout,"Usage: ./disksched <inputfile> <outputfile> <algorithm> [limit]\n");
        fflush(stdout);
        return -1;
    }
    fin=fopen(argv[1],"r");
    if(!fin)
    {
        fprintf(stdout,"Could not open input file %s\n",argv[1]);
        fflush(stdout);
        return -1;
    }
    fout=fopen(argv[2],"w");
    if(!fout)
    {
        fprintf(stdout,"Could not open output file %s\n",argv[2]);
        fflush(stdout);
        fclose(fin);
        return -1;
    }
    if(strcmp(argv[3],"FCFS")==0)
    {

    }
    else if(strcmp(argv[3],"SSTF")==0)
    {

    }
    else
    {
        fprintf(stdout,"Algorithm must be FCFS or SSTF\n");
        fflush(stdout);
        fclose(fin);
        fclose(fout);
        return -1;
    }
    fclose(fin);
    fclose(fout);
}
