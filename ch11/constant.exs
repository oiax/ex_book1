customers = [
  {"Alice", :gold},
  {"Bob", :platinum},
  {"Carol", :silver}
]

for customer <- customers do
  {name, stage} = customer

  if stage == :platinum do
    IO.puts("* " <> name)
  else
    IO.puts("  " <> name)
  end
end
