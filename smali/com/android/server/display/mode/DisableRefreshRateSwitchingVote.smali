.class public final Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/mode/Vote;


# instance fields
.field public final mDisableRefreshRateSwitching:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;

    iget-boolean p0, p0, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    iget-boolean p1, p1, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisableRefreshRateSwitchingVote{ mDisableRefreshRateSwitching="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    const-string v1, " }"

    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateSummary(Lcom/android/server/display/mode/VoteSummary;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    iput-boolean p0, p1, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    return-void
.end method
