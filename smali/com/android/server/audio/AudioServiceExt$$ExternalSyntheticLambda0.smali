.class public final synthetic Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioServiceExt;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioServiceExt;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioServiceExt;

    iput-object p2, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput p3, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioServiceExt;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$2:I

    iget-object v0, v0, Lcom/android/server/audio/AudioServiceExt;->mDvfsHelper:Lcom/samsung/android/server/audio/DvfsHelper;

    iget-boolean v0, v0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsScreenOn:Z

    invoke-static {v1, p0, v0}, Lcom/samsung/android/server/audio/utils/SoundAliveUtils;->notifyDVFSToSoundAlive(Landroid/content/Context;IZ)V

    return-void
.end method
