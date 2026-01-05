.class public final Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mChosenClassType:Ljava/lang/String;

.field public mChosenProviderStatus:I

.field public mChosenUid:I

.field public mFallbackUiUid:I

.field public mFinalFinishTimeNanoseconds:J

.field public mFrameworkException:Ljava/lang/String;

.field public mHasException:Z

.field public mOemUiUid:I

.field public mOemUiUsageStatus:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

.field public mQueryEndTimeNanoseconds:J

.field public mQueryStartTimeNanoseconds:J

.field public mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

.field public mServiceBeganTimeNanoseconds:J

.field public final mSessionIdCaller:I

.field public final mSessionIdProvider:I

.field public mUiCallEndTimeNanoseconds:J

.field public mUiCallStartTimeNanoseconds:J

.field public mUiReturned:Z


# direct methods
.method public constructor <init>(II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiReturned:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenUid:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mServiceBeganTimeNanoseconds:J

    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryStartTimeNanoseconds:J

    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryEndTimeNanoseconds:J

    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallStartTimeNanoseconds:J

    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallEndTimeNanoseconds:J

    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFinalFinishTimeNanoseconds:J

    iput v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUid:I

    iput v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFallbackUiUid:I

    sget-object v2, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->UNKNOWN:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    iput-object v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUsageStatus:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    iput v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenProviderStatus:I

    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mHasException:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFrameworkException:Ljava/lang/String;

    new-instance v1, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v1, v2, v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    iput-object v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenClassType:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mSessionIdCaller:I

    iput p2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mSessionIdProvider:I

    return-void
.end method


# virtual methods
.method public final getTimestampFromReferenceStartMicroseconds(J)I
    .locals 2

    iget-wide v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mServiceBeganTimeNanoseconds:J

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const-string p0, "ChosenFinalPhaseMetric"

    const-string/jumbo p1, "The timestamp is before service started, falling back to default int"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p0, p1

    return p0
.end method
