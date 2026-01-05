.class public final Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;
.super Landroid/app/appfunctions/ICancellationCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Landroid/os/CancellationSignal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-direct {p0}, Landroid/app/appfunctions/ICancellationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendCancellationTransport(Landroid/os/ICancellationSignal;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {p0, p1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    return-void
.end method
