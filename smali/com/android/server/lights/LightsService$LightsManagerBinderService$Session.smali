.class public final Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mPriority:I

.field public final mRequests:Landroid/util/SparseArray;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mToken:Landroid/os/IBinder;

    iput p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mPriority:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    iget p1, p1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mPriority:I

    iget p0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mPriority:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
