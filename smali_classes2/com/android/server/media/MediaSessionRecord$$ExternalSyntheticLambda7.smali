.class public final synthetic Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaSessionRecord;

.field public final synthetic f$1:Landroid/media/session/ISessionControllerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/media/MediaSessionRecord;

    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;->f$1:Landroid/media/session/ISessionControllerCallback;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;->f$1:Landroid/media/session/ISessionControllerCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionRecord;->unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V

    return-void
.end method
