set lines 200 pages 40
col dbdate format a23
col online_status format a23
select to_char(sysdate,'yyyymmdd') dbdate,online_status,count(*) file_num, round(sum(bytes/1024/1024/1024),2) bytes_gb 
from dba_data_files
group by rollup(online_status)
order by 2;
