.class public abstract Lcom/android/server/SystemClockTime;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sNativeData:J

.field public static sTimeConfidence:I

.field public static final sTimeDebugLog:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    sput-object v0, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    sput v2, Lcom/android/server/SystemClockTime;->sTimeConfidence:I

    invoke-static {}, Lcom/android/server/SystemClockTime;->init()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/SystemClockTime;->sNativeData:J

    return-void
.end method

.method private static native init()J
.end method

.method private static native setTime(JJ)I
.end method

.method public static setTimeAndConfidence(ILjava/lang/String;J)V
    .locals 3

    const-class v0, Lcom/android/server/SystemClockTime;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/android/server/SystemClockTime;->sNativeData:J

    invoke-static {v1, v2, p2, p3}, Lcom/android/server/SystemClockTime;->setTime(JJ)I

    sput p0, Lcom/android/server/SystemClockTime;->sTimeConfidence:I

    sget-object p0, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
