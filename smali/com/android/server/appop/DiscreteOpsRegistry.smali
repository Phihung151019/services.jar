.class public abstract Lcom/android/server/appop/DiscreteOpsRegistry;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEFAULT_DISCRETE_HISTORY_CUTOFF:J

.field public static final DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

.field public static final MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

.field public static sDiscreteFlags:I

.field public static sDiscreteHistoryCutoff:J

.field public static sDiscreteHistoryQuantization:J

.field public static sDiscreteOps:[I


# instance fields
.field public mDebugMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x7

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteOps:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/appop/DiscreteOpsRegistry;->mDebugMode:Z

    return-void
.end method

.method public static discretizeDuration(J)J
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    add-long/2addr p0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr p0, v2

    div-long/2addr p0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static isDiscreteOp(II)Z
    .locals 1

    sget-object v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteOps:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    const/4 v0, 0x0

    if-gez p0, :cond_0

    return v0

    :cond_0
    sget p0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteFlags:I

    and-int/2addr p0, p1

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static parseOpsList(Ljava/lang/String;)[I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    array-length v0, p0

    new-array v2, v0, [I

    :goto_1
    if-ge v1, v0, :cond_1

    :try_start_0
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse Discrete ops list: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DiscreteOpsRegistry"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "1,0,147,26,27,100,101,120,136,149,152,150,141"

    invoke-static {p0}, Lcom/android/server/appop/DiscreteOpsRegistry;->parseOpsList(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public final setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "discrete_history_cutoff_millis"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/appop/DiscreteOpsRegistry;->mDebugMode:Z

    if-nez v0, :cond_1

    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    goto :goto_0

    :cond_0
    sput-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "discrete_history_quantization_millis"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_3

    iget-boolean p0, p0, Lcom/android/server/appop/DiscreteOpsRegistry;->mDebugMode:Z

    if-nez p0, :cond_3

    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    goto :goto_1

    :cond_2
    sput-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p0

    const-string/jumbo v0, "discrete_history_op_flags"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/16 v1, 0xb

    if-eqz p0, :cond_4

    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_4
    sput v1, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteFlags:I

    const-string/jumbo p0, "discrete_history_ops_cslist"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    const-string p0, "1,0,147,26,27,100,101,120,136,149,152,150,141"

    invoke-static {p0}, Lcom/android/server/appop/DiscreteOpsRegistry;->parseOpsList(Ljava/lang/String;)[I

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-static {p0}, Lcom/android/server/appop/DiscreteOpsRegistry;->parseOpsList(Ljava/lang/String;)[I

    move-result-object p0

    :goto_2
    sput-object p0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteOps:[I

    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    return-void
.end method
