# Copy benchmarking files to Presto master and connect
zip -r presto.zip \
      Warmup.sql \
      PrestoTiming.sql \
      100-PopulatePresto.sh \
      101-BenchmarkPresto.sh \
      query
gcloud compute scp presto.zip tpcds-presto-m:~ \
      --zone "us-central1-f"
gcloud compute ssh tpcds-presto-m \
      --zone "us-central1-f"