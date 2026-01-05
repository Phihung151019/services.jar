.class public final synthetic Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/media/SoundDoseRecord;


# direct methods
.method public synthetic constructor <init>(Landroid/media/SoundDoseRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;->f$0:Landroid/media/SoundDoseRecord;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;->f$0:Landroid/media/SoundDoseRecord;

    check-cast p1, Landroid/media/SoundDoseRecord;

    iget v0, p1, Landroid/media/SoundDoseRecord;->value:F

    iget v1, p0, Landroid/media/SoundDoseRecord;->value:F

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/media/SoundDoseRecord;->timestamp:J

    iget-wide v2, p0, Landroid/media/SoundDoseRecord;->timestamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Landroid/media/SoundDoseRecord;->averageMel:F

    iget v1, p0, Landroid/media/SoundDoseRecord;->averageMel:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p1, p1, Landroid/media/SoundDoseRecord;->duration:I

    iget p0, p0, Landroid/media/SoundDoseRecord;->duration:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
