.class public final synthetic Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda2;->f$0:Landroid/os/IBinder;

    iput p1, p0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda2;->f$0:Landroid/os/IBinder;

    iget p0, p0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {v0, p0}, Landroid/view/SurfaceControl;->notifyHFRmode(Landroid/os/IBinder;I)V

    return-void
.end method
