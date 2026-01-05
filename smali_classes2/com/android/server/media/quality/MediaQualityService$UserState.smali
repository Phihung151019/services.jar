.class public final Lcom/android/server/media/quality/MediaQualityService$UserState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mActiveProcessingPictureCallbackList:Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

.field public final mActiveProcessingPictureListenerMap:Ljava/util/Map;

.field public final mPictureProfileCallbackPidUidMap:Ljava/util/Map;

.field public final mPictureProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

.field public final mSoundProfileCallbackPidUidMap:Ljava/util/Map;

.field public final mSoundProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;


# direct methods
.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;-><init>(Lcom/android/server/media/quality/MediaQualityService;I)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mPictureProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;-><init>(Lcom/android/server/media/quality/MediaQualityService;I)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mSoundProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;-><init>(Lcom/android/server/media/quality/MediaQualityService;I)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mActiveProcessingPictureCallbackList:Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mPictureProfileCallbackPidUidMap:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mSoundProfileCallbackPidUidMap:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mActiveProcessingPictureListenerMap:Ljava/util/Map;

    return-void
.end method
