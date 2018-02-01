
-- Disable auto indexing before doing bulk insertions / deletions

-- Deleting previous entries of loader script
delete from DB.DBA.load_list;

-- see http://www.openlinksw.com/dataspace/dav/wiki/Main/VirtBulkRDFLoader
select 'Loading data...';
--      <folder with data>  <pattern>    <default graph if no graph file specified>
ld_dir ('/home/amoya/20180104', '*', 'http://wikidata.org/truthy-20180104');

-- See if we have any errors
-- select * from DB.DBA.load_list;


-- renable auto-indexing once finished with bulk operations
