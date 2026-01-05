.class public abstract Lcom/android/server/chimera/genie/GenieLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static sDump:Ljava/util/Queue;

.field public static final sLock:Ljava/lang/Object;

.field public static sReclaimedRequests:I

.field public static sRequestCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/chimera/genie/GenieLogger;->sLock:Ljava/lang/Object;

    return-void
.end method
