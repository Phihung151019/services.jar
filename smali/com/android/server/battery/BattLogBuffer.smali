.class public abstract Lcom/android/server/battery/BattLogBuffer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final mBattActionChangedLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

.field public static final mBattInfoLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

.field public static final mEventLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

.field public static final mSleepChargingLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    const-string v1, "EventLogBuffer"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/server/battery/BattLogBuffer$LogBuffer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/battery/BattLogBuffer;->mEventLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    new-instance v0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    const-string/jumbo v1, "SleepChargingLogBuffer"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3}, Lcom/android/server/battery/BattLogBuffer$LogBuffer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/battery/BattLogBuffer;->mSleepChargingLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    new-instance v0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    const-string v1, "BattInfoLogBuffer"

    invoke-direct {v0, v1, v3}, Lcom/android/server/battery/BattLogBuffer$LogBuffer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/battery/BattLogBuffer;->mBattInfoLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    new-instance v0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    const-string v1, "BattActionChangedLogBuffer"

    invoke-direct {v0, v1, v2}, Lcom/android/server/battery/BattLogBuffer$LogBuffer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/battery/BattLogBuffer;->mBattActionChangedLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    return-void
.end method

.method public static addLog(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/server/battery/BattLogBuffer;->mBattActionChangedLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/battery/BattLogBuffer;->mBattInfoLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/server/battery/BattLogBuffer;->mSleepChargingLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/server/battery/BattLogBuffer;->mEventLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    :goto_0
    if-eqz p0, :cond_5

    sget-object v0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v1, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  "

    invoke-static {v0, v1, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->logs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->maxBufferSize:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->logs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    :cond_4
    iget-object p0, p0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->logs:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void

    :cond_5
    const-string/jumbo p0, "[SS]BattLogBuffer"

    const-string/jumbo p1, "[addLog]wrong bufferType"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getAllLogs()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/battery/BattLogBuffer;->mEventLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    invoke-static {v2}, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->-$$Nest$mgetLogs(Lcom/android/server/battery/BattLogBuffer$LogBuffer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/battery/BattLogBuffer;->mSleepChargingLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    invoke-static {v3}, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->-$$Nest$mgetLogs(Lcom/android/server/battery/BattLogBuffer$LogBuffer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/battery/BattLogBuffer;->mBattInfoLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    invoke-static {v3}, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->-$$Nest$mgetLogs(Lcom/android/server/battery/BattLogBuffer$LogBuffer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/battery/BattLogBuffer;->mBattActionChangedLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    invoke-static {v1}, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->-$$Nest$mgetLogs(Lcom/android/server/battery/BattLogBuffer$LogBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
