create table if not exists public.campaign_journal (
    id text primary key,
    data jsonb not null,
    updated_at timestamptz not null default now()
);

alter table public.campaign_journal enable row level security;

drop policy if exists "Players can read campaign journal" on public.campaign_journal;
drop policy if exists "Players can write campaign journal" on public.campaign_journal;

create policy "Players can read campaign journal"
on public.campaign_journal
for select
to anon
using (id = 'ecos-costa');

create policy "Players can write campaign journal"
on public.campaign_journal
for all
to anon
using (id = 'ecos-costa')
with check (id = 'ecos-costa');
