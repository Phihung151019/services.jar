.class public final Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mTag:Ljava/lang/String;

.field public final mUid:I

.field public final mWakeupRtc:J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mWakeupRtc:J

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mUid:I

    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mWakeupRtc:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "rtc"

    invoke-virtual {p1, v0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    iget p2, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mUid:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "uid"

    invoke-virtual {p1, v0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const-string/jumbo p2, "tag"

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mTag:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method
