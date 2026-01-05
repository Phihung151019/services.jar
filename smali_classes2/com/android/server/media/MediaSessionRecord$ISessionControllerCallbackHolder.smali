.class public final Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallback:Landroid/media/session/ISessionControllerCallback;

.field public final mDeathMonitor:Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;

    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mDeathMonitor:Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;

    return-void
.end method
