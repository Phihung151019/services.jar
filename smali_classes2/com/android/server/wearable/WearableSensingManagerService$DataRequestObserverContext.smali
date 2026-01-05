.class public final Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDataRequestObserverId:I

.field public final mDataRequestPendingIntent:Landroid/app/PendingIntent;

.field public final mDataRequestRemoteCallback:Landroid/os/RemoteCallback;

.field public final mDataType:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(IIILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataType:I

    iput p2, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mUserId:I

    iput p3, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestObserverId:I

    iput-object p4, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestPendingIntent:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestRemoteCallback:Landroid/os/RemoteCallback;

    return-void
.end method
