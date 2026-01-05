.class public final Lcom/android/server/audio/FocusRequester$FocusRequestEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mClientId:Ljava/lang/String;

.field public final mCode:I

.field public final mDescription:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    iget-object v0, p1, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mClientId:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iput v0, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mUid:I

    iget-object p1, p1, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mCode:I

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    iput-object p3, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "focus owner: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mCode:I

    if-eq v2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " code: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
