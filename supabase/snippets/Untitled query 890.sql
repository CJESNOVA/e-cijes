SELECT
  bucket_id,
  name AS chemin,
  created_at
FROM storage.objects
WHERE bucket_id = 'ecijes-bucket'
ORDER BY name;
