.class public final synthetic Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/speech/IRecognitionListener;


# direct methods
.method public synthetic constructor <init>(Landroid/speech/IRecognitionListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda9;->f$0:Landroid/speech/IRecognitionListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda9;->f$0:Landroid/speech/IRecognitionListener;

    check-cast p1, Landroid/util/Pair;

    sget v0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->$r8$clinit:I

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
