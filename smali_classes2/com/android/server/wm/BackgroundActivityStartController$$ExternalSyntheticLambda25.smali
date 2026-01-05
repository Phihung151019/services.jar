.class public final synthetic Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/StringJoiner;

.field public final synthetic f$1:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;


# direct methods
.method public synthetic constructor <init>(Ljava/util/StringJoiner;Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;->f$0:Ljava/util/StringJoiner;

    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;->f$1:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;->f$0:Ljava/util/StringJoiner;

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;->f$1:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[ASM] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;->f$0:Ljava/util/StringJoiner;

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;->f$1:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[ASM] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
