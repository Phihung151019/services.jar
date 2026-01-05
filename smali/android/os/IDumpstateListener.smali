.class public interface abstract Landroid/os/IDumpstateListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final BUGREPORT_ERROR_ANOTHER_REPORT_IN_PROGRESS:I = 0x5

.field public static final BUGREPORT_ERROR_INVALID_INPUT:I = 0x1

.field public static final BUGREPORT_ERROR_NO_BUGREPORT_TO_RETRIEVE:I = 0x6

.field public static final BUGREPORT_ERROR_RUNTIME_ERROR:I = 0x2

.field public static final BUGREPORT_ERROR_USER_CONSENT_TIMED_OUT:I = 0x4

.field public static final BUGREPORT_ERROR_USER_DENIED_CONSENT:I = 0x3

.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDumpstateListener"


# virtual methods
.method public abstract onError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onFinished(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onProgress(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onScreenshotTaken(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUiIntensiveBugreportDumpsFinished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
