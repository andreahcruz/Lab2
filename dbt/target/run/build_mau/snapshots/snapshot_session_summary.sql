
      
  
    

        create or replace transient table FINANCE_DB.snapshot.snapshot_session_summary
         as
        (

    select *,
        md5(coalesce(cast(sessionId as varchar ), '')
         || '|' || coalesce(cast(ts as varchar ), '')
        ) as dbt_scd_id,
        ts as dbt_updated_at,
        ts as dbt_valid_from,
        nullif(ts, ts) as dbt_valid_to
    from (
        



SELECT * FROM FINANCE_DB.raw_data.session_summary

    ) sbq



        );
      
  
  