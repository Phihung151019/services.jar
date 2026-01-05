.class public final Lcom/android/server/timedetector/ConfigurationInternal$Builder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAutoDetectionEnabledSetting:Z

.field public mAutoDetectionSupported:Z

.field public mAutoSuggestionLowerBound:Ljava/time/Instant;

.field public mManualSuggestionLowerBound:Ljava/time/Instant;

.field public mOriginPriorities:[I

.field public mSuggestionUpperBound:Ljava/time/Instant;

.field public mSystemClockConfidenceThresholdMillis:I

.field public mSystemClockUpdateThresholdMillis:I

.field public mUserConfigAllowed:Z

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserId:I

    return-void
.end method
