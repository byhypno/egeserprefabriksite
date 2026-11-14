-- EGESER PREFABRIK - RUHSAT YAZISINI GERI AL - 20261114
-- 19_RUHSAT_YAZISI_YENIDEN.sql oncesindeki baslik, meta ve icerigi yedekten geri yukler, yedegi siler.
SET NAMES utf8mb4;

UPDATE oc_egeser_blog_post p JOIN oc_egeser_blog_post_backup_20261114 b ON b.blog_id = p.blog_id
SET p.title = b.title, p.meta_title = b.meta_title, p.meta_description = b.meta_description, p.meta_keyword = b.meta_keyword, p.description = b.description, p.date_modified = b.date_modified;

DROP TABLE oc_egeser_blog_post_backup_20261114;
