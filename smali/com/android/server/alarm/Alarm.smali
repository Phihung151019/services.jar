.class public final Lcom/android/server/alarm/Alarm;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final NUM_POLICIES:I = 0x5


# instance fields
.field public final alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

.field public count:I

.field public final creatorUid:I

.field public final exactAllowReason:I

.field public final flags:I

.field public final listener:Landroid/app/IAlarmListener;

.field public final listenerTag:Ljava/lang/String;

.field public final mIdleOptions:Landroid/os/Bundle;

.field public mMaxWhenElapsed:J

.field public final mPolicyWhenElapsed:[J

.field public mUsingReserveQuota:Z

.field public mWhenElapsed:J

.field public final operation:Landroid/app/PendingIntent;

.field public origType:I

.field public final origWhen:J

.field public final packageName:Ljava/lang/String;

.field public priorityClass:I

.field public final repeatInterval:J

.field public final sourcePackage:Ljava/lang/String;

.field public final statsTag:Ljava/lang/String;

.field public final type:I

.field public final uid:I

.field public final wakeup:Z

.field public final windowLength:J

.field public final workSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(IIIIJJJJLandroid/app/AlarmManager$AlarmClockInfo;Landroid/app/IAlarmListener;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object/from16 v2, p15

    move-object/from16 v3, p18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/alarm/Alarm;->type:I

    iput p1, p0, Lcom/android/server/alarm/Alarm;->origType:I

    iput-wide p5, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    const/4 p5, 0x0

    const/4 p6, 0x2

    if-eq p1, p6, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v4, p5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    const/4 v4, 0x5

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aput-wide p7, v4, p5

    iput-wide p7, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    move-wide v4, p9

    iput-wide v4, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    invoke-static/range {p7 .. p10}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    iput-object v2, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    iput-object v3, p0, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    if-eq p1, p6, :cond_3

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "*alarm*:"

    goto :goto_3

    :cond_3
    :goto_2
    const-string p1, "*walarm*:"

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_4
    invoke-static {p1, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    iput-object p1, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iput p2, p0, Lcom/android/server/alarm/Alarm;->flags:I

    move-object/from16 p1, p13

    iput-object p1, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    iput p3, p0, Lcom/android/server/alarm/Alarm;->uid:I

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    move-object/from16 p2, p16

    iput-object p2, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    iput p4, p0, Lcom/android/server/alarm/Alarm;->exactAllowReason:I

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p1

    :cond_5
    iput-object p1, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result p3

    :cond_6
    iput p3, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iput-boolean p5, p0, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    iput p6, p0, Lcom/android/server/alarm/Alarm;->priorityClass:I

    return-void
.end method

.method public static policyIndexToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string v0, "--unknown("

    const-string v1, ")--"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "gms_manager"

    return-object p0

    :cond_1
    const-string/jumbo p0, "battery_saver"

    return-object p0

    :cond_2
    const-string/jumbo p0, "device_idle"

    return-object p0

    :cond_3
    const-string/jumbo p0, "app_standby"

    return-object p0

    :cond_4
    const-string/jumbo p0, "requester"

    return-object p0
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "--unknown--"

    return-object p0

    :cond_0
    const-string p0, "ELAPSED"

    return-object p0

    :cond_1
    const-string p0, "ELAPSED_WAKEUP"

    return-object p0

    :cond_2
    const-string/jumbo p0, "RTC"

    return-object p0

    :cond_3
    const-string/jumbo p0, "RTC_WAKEUP"

    return-object p0
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/alarm/Alarm;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :cond_1
    :goto_0
    const-string/jumbo v3, "tag="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "type="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/alarm/Alarm;->origType:I

    if-eq v1, v3, :cond_2

    const-string v1, " origType="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/alarm/Alarm;->origType:I

    invoke-static {v1}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const-string v1, " origWhen="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    if-eqz v2, :cond_3

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {v3, v4, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_1
    const-string v1, " window="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    iget v1, p0, Lcom/android/server/alarm/Alarm;->exactAllowReason:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    const-string v2, " exactAllowReason="

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    packed-switch v1, :pswitch_data_0

    const-string v1, "--unknown--"

    goto :goto_2

    :pswitch_0
    const-string/jumbo v1, "prioritized"

    goto :goto_2

    :pswitch_1
    const-string/jumbo v1, "listener"

    goto :goto_2

    :pswitch_2
    const-string/jumbo v1, "policy_permission"

    goto :goto_2

    :pswitch_3
    const-string/jumbo v1, "compat"

    goto :goto_2

    :pswitch_4
    const-string/jumbo v1, "allow-listed"

    goto :goto_2

    :pswitch_5
    const-string/jumbo v1, "permission"

    goto :goto_2

    :pswitch_6
    const-string/jumbo v1, "N/A"

    :goto_2
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    const-string v1, " repeatInterval="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v1, " count="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/alarm/Alarm;->count:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v1, " flags=0x"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/alarm/Alarm;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "policyWhenElapsed:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    const/4 v1, 0x5

    if-ge v0, v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/alarm/Alarm;->policyIndexToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v1, v1, v0

    invoke-static {v1, v2, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "whenElapsed="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, " maxWhenElapsed="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    if-eqz p2, :cond_6

    const-string p2, " usingReserveQuota=true"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz p2, :cond_7

    const-string p2, "Alarm clock:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  triggerTime="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/util/Date;

    iget-object p3, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p3}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  showIntent="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p2}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_7
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz p2, :cond_8

    const-string/jumbo p2, "operation="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz p2, :cond_9

    const-string/jumbo p2, "listener="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    if-eqz p2, :cond_a

    const-string/jumbo p2, "idle-options="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V
    .locals 3

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10900000001L

    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10e00000002L

    iget v2, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    sub-long/2addr v0, p4

    const-wide p4, 0x10300000003L

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p4, 0x10300000004L

    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p4, 0x10300000005L

    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p4, 0x10500000006L

    iget v0, p0, Lcom/android/server/alarm/Alarm;->count:I

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p4, 0x10500000007L

    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p4, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz p4, :cond_0

    const-wide v0, 0x10b00000008L

    invoke-virtual {p4, p1, v0, v1}, Landroid/app/AlarmManager$AlarmClockInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    iget-object p4, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz p4, :cond_1

    const-wide v0, 0x10b00000009L

    invoke-virtual {p4, p1, v0, v1}, Landroid/app/PendingIntent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide p4, 0x1090000000aL

    invoke-virtual {p1, p4, p5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getPolicyElapsed(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public final setPolicyElapsed(IJ)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aput-wide p2, v0, p1

    iget-wide p1, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    aget-wide v4, v0, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    aget-wide v3, v0, p3

    iget-wide v5, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    iget-wide v5, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    cmp-long p0, p1, v5

    if-nez p0, :cond_2

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return p3

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x80

    const-string v1, "Alarm{"

    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/alarm/Alarm;->origType:I

    if-eq v1, v2, :cond_0

    const-string v1, " origType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/alarm/Alarm;->origType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " origWhen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " whenElapsed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
