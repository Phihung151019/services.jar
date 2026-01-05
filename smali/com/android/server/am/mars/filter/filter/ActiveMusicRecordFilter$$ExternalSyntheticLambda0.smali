.class public final synthetic Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    iput-object p2, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, p0}, Landroid/media/AudioManager;->isUsingAudio(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
