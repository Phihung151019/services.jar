.class public final Lcom/android/server/display/HighBrightnessModeMetadata;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mEvents:Ljava/util/ArrayDeque;

.field public mRunningStartTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/HighBrightnessModeMetadata;->mEvents:Ljava/util/ArrayDeque;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    return-void
.end method
