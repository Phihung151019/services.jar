.class public abstract Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;
.super Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final nanoappId:J

.field public final success:Z


# direct methods
.method public constructor <init>(IJJZ)V
    .locals 0

    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;-><init>(JI)V

    iput-wide p4, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;->nanoappId:J

    iput-boolean p6, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;->success:Z

    return-void
.end method
