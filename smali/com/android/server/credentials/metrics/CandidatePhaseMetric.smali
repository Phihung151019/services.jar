.class public final Lcom/android/server/credentials/metrics/CandidatePhaseMetric;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCandidateUid:I

.field public mFrameworkException:Ljava/lang/String;

.field public mHasException:Z

.field public mProviderQueryStatus:I

.field public mQueryFinishTimeNanoseconds:J

.field public mQueryReturned:Z

.field public mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

.field public mServiceBeganTimeNanoseconds:J

.field public final mSessionIdProvider:I

.field public mStartQueryTimeNanoseconds:J


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryReturned:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mServiceBeganTimeNanoseconds:J

    iput-wide v2, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mStartQueryTimeNanoseconds:J

    iput-wide v2, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryFinishTimeNanoseconds:J

    iput v1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mProviderQueryStatus:I

    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mHasException:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mFrameworkException:Ljava/lang/String;

    new-instance v0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v1, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    iput p1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mSessionIdProvider:I

    return-void
.end method
