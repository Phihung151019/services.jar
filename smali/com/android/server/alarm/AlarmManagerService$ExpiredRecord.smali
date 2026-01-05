.class public final Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDiff:J

.field public final mFlags:J

.field public final mLastElapsed:J

.field public final mLastRtc:J

.field public final mNonWakeup:J

.field public final mWakeup:J

.field public final mWhenExpiredElapsed:J

.field public final mWhenExpiredRtc:J


# direct methods
.method public constructor <init>(JJJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mFlags:J

    iput-wide p3, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWakeup:J

    iput-wide p5, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mNonWakeup:J

    iput-wide p7, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredRtc:J

    iput-wide p9, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredElapsed:J

    iput-wide p11, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mLastRtc:J

    iput-wide p13, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mLastElapsed:J

    sub-long/2addr p7, p11

    sub-long/2addr p7, p9

    add-long/2addr p7, p13

    iput-wide p7, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mDiff:J

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 10

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mFlags:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "[flag"

    invoke-virtual {p1, v3, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredElapsed:J

    iget-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredRtc:J

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mLastRtc:J

    cmp-long v2, v0, v2

    const-string/jumbo v3, "diff"

    if-nez v2, :cond_0

    const-string/jumbo v0, "last 0"

    invoke-virtual {p1, v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    goto :goto_0

    :cond_0
    sub-long v0, v6, v0

    sub-long/2addr v0, v4

    iget-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mLastElapsed:J

    add-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWakeup:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "wakeup"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mNonWakeup:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v0, "non-wakeup"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v0, "elapsed"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const-string/jumbo p0, "rtc="

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "]"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
