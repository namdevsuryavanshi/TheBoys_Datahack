###EDA###

table(eda$category_id)
cat27=eda[eda$category_id==27,]
plot(cat27$dur_min,cat27$view_count,xlab="duration in min",ylab="count of views",col="red",main=" Count Views vs Duration")
dur=cat27$dur_min
count=cat27$view_count
#fd=data.frame(table(cut(dur,breaks = seq(0,100,5)),count))
fd=data.frame(dur,count)



ggplot(fd, aes(x = dur, y = count)) + 
  geom_point() + 
  labs(x = "Duration(mins)", y = "View counts", title = "Category 27-Educational")
  scale_color_manual(values=c("red"),labels=c(count))


table(eda$category_id)
cat23=eda[eda$category_id==23,]
plot(cat23$dur_min,cat23$view_count,xlab="duration in min",ylab="count of views",col="red",main=" Count Views vs Duration")
dur=cat23$dur_min
count=cat23$view_count
#fd=data.frame(table(cut(dur,breaks = seq(0,100,5)),count))
fd=data.frame(dur,count)

ggplot(fd, aes(x = dur, y = count)) + 
  geom_point() + 
  labs(x = "Duration(mins)", y = "View counts", title = "Category 23-Entertainment") +
  scale_color_manual(values=c("red"),labels=c(count))


table(eda$category_id)
cat23=eda[eda$category_id==20,]
plot(cat23$dur_min,cat23$view_count,xlab="duration in min",ylab="count of views",col="red",main=" Count Views vs Duration")
dur=cat23$dur_min
count=cat23$view_count
#fd=data.frame(table(cut(dur,breaks = seq(0,100,5)),count))
fd=data.frame(dur,count)

ggplot(fd, aes(x = dur, y = count)) + 
  geom_point() + 
  labs(x = "Duration(mins)", y = "View counts", title = "Category 20-Gaming") +
  scale_color_manual(values=c("red"),labels=c(count))



cat27=eda[eda$category_id==27,]
plot(cat27$dur_min,cat27$likes)
dur=cat27$dur_min
count=cat27$likes
fd=data.frame(dur,count)

ggplot(fd, aes(x = dur, y = count)) + 
  geom_point() + 
  labs(x = "Duration(mins)", y = "Likes", title = "Category 27-Educational") +
  scale_color_manual(values=c("red"),labels=c(count))



cat23=eda[eda$category_id==23,]
plot(cat23$dur_min,cat23$likes)
dur=cat23$dur_min
count=cat23$likes
fd=data.frame(dur,count)

ggplot(fd, aes(x = dur, y = count)) + 
  geom_point() + 
  labs(x = "Duration(mins)", y = "Likes", title = "Category 23-Entertainment") +
  scale_color_manual(values=c("red"),labels=c(count))

cat22=eda[eda$category_id==22,]
plot(cat22$dur_min,cat22$likes)
dur=cat22$dur_min
count=cat22$likes
fd=data.frame(dur,count)

ggplot(fd, aes(x = dur, y = count)) + 
  geom_point() + 
  labs(x = "Duration(mins)", y = "Likes", title = "Category 22-Vlogs") +
  scale_color_manual(values=c("red"),labels=c(count))

cat22=eda[eda$category_id==22,]
plot(cat22$dur_min,cat22$likes)
dur=cat22$dur_min
count=cat22$view_count
fd=data.frame(dur,count)

ggplot(fd, aes(x = dur, y = count)) + 
  geom_point() + 
  labs(x = "Duration(mins)", y = "View Counts", title = "Category 22-Vlogs") +
  scale_color_manual(values=c("red"),labels=c(count))







t=table(cat27$channel_title)
gate=cat27[cat27$channel_title=="SAURABH DAHIVADKAR",]
plot(gate$upload_time,gate$view_count)
View(gate)

upload=gate$upload_time
count=gate$view_count
fd=data.frame(upload,count)


ggplot(fd, aes(x = upload, y = count)) + 
  geom_point() + 
  labs(x = "upload", y = "View Counts", title = "SAURABH DAHIVADKAR",subtitle = "Category-Educational") +
  scale_color_manual(values=c("red"),labels=c(count))
max(count)



t=table(cat23$channel_title)
gate=cat23[cat23$channel_title=="Comedian Vikas Thakur",]
plot(gate$upload_time,gate$view_count)
View(gate)

upload=gate$upload_time
count=gate$view_count
fd=data.frame(upload,count)


ggplot(fd, aes(x = upload, y = count)) + 
  geom_point() + 
  labs(x = "upload", y = "View Counts", title = "Comedian Vikas Thakur",subtitle = "Category-Educational") +
  scale_color_manual(values=c("red"),labels=c(count))
max(count)




t=table(cat20$channel_title)
gate=cat20[cat20$channel_title=="MOinsideHIT",]
plot(gate$upload_time,gate$view_count)


View(gate)

upload=gate$upload_time
count=gate$view_count
fd=data.frame(upload,count)


ggplot(fd, aes(x = upload, y = count)) + 
  geom_point() + 
  labs(x = "upload", y = "View Counts", title = "MOinsideHIT",subtitle = "Category-Educational") +
  scale_color_manual(values=c("red"),labels=c(count))
max(count)



cat20=eda[eda$category_id==20,]

t=table(cat20$channel_title)
t
gate=cat20[cat20$channel_title=="SELEM YT",]
plot(gate$upload_time,gate$view_count)


View(gate)

upload=gate$upload_time
count=gate$view_count
fd=data.frame(upload,count)


ggplot(fd, aes(x = upload, y = count)) + 
  geom_point() + 
  labs(x = "upload", y = "View Counts", title = "SELEM YT",subtitle = "Category-Educational") +
  scale_color_manual(values=c("red"),labels=c(count))
max(count)






cat22=eda[eda$category_id==22,]

t=table(cat22$channel_title)
t
gate=cat20[cat20$channel_title=="SELEM YT",]
plot(gate$upload_time,gate$view_count)


View(gate)

upload=gate$upload_time
count=gate$view_count
fd=data.frame(upload,count)


ggplot(fd, aes(x = upload, y = count)) + 
  geom_point() + 
  labs(x = "upload", y = "View Counts", title = "SELEM YT",subtitle = "Category-Educational") +
  scale_color_manual(values=c("red"),labels=c(count))
max(count)




cat17=eda[eda$category_id==17,]

t=table(cat17$channel_title)
t
gate=cat17[cat17$channel_title=="ChessBase India",]
plot(gate$upload_time,gate$view_count)


View(gate)

upload=gate$upload_time
count=gate$view_count
fd=data.frame(upload,count)


ggplot(fd, aes(x = upload, y = count)) + 
  geom_point() + 
  labs(x = "upload", y = "View Counts", title = "ChessBase India",subtitle = "Category-Podcast") +
  scale_color_manual(values=c("red"),labels=c(count))
max(count)


