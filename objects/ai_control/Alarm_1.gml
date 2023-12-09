// ai will update it's escape track every half of second
if aimode=ai_bombescape
  {
  if instance_place(escapex*16,escapey*16,notsafe_place)
  or instance_place(escapex*16,escapey*16,bomb)
  aimode=ai_playerfollow;
  }
if aimode=ai_randomwalk aimode=ai_playerfollow;
alarm[1]=30;
