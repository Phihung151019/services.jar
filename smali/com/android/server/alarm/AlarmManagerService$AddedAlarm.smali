.class public final Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAlarmClock:Z

.field public final mFlags:I

.field public final mHash:Ljava/lang/String;

.field public final mInterval:J

.field public final mOrigWhen:J

.field public final mTag:Ljava/lang/String;

.field public final mType:I

.field public final mWhenAddedElapsed:J

.field public final mWhenAddedRtc:J

.field public final mWindowLength:J


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/Alarm;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mTag:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/alarm/Alarm;->type:I

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mType:I

    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mFlags:I

    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mAlarmClock:Z

    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PI:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->hashCode()I

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "L:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v1}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->hashCode()I

    move-result v1

    goto :goto_1

    :goto_2
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mHash:Ljava/lang/String;

    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->origWhen:J

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mOrigWhen:J

    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->windowLength:J

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWindowLength:J

    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mInterval:J

    iput-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWhenAddedRtc:J

    iput-wide p4, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWhenAddedElapsed:J

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 5

    const-string/jumbo v0, "[tag"

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "T"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mAlarmClock:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AC"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const-string v1, "H"

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mHash:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v0

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mOrigWhen:J

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OW="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "OW"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    :goto_0
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWindowLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "WL"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    :cond_1
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mInterval:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "RI"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    :cond_2
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWhenAddedElapsed:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "elapsed"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "rtc="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWhenAddedRtc:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "]"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
