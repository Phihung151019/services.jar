.class public Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mJourney:I

.field public final mSessionId:J

.field public final mStartTimeInMills:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mJourney:I

    iput-wide p1, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mSessionId:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mStartTimeInMills:J

    return-void
.end method

.method public constructor <init>(JIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mJourney:I

    iput-wide p1, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mSessionId:J

    iput-wide p4, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mStartTimeInMills:J

    return-void
.end method
