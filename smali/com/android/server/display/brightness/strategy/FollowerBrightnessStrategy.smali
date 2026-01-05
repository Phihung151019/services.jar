.class public final Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public mBrightnessToFollow:F

.field public mBrightnessToFollowSlowChange:Z

.field public final mDisplayId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mDisplayId:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollowSlowChange:Z

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "FollowerBrightnessStrategy:"

    const-string v1, "  mDisplayId="

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mDisplayId:I

    const-string v2, "  mBrightnessToFollow:"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    const-string v2, "  mBrightnessToFollowSlowChange:"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollowSlowChange:Z

    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "FollowerBrightnessStrategy"

    return-object p0
.end method

.method public final getReason()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public final strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 0

    return-void
.end method

.method public final updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 2

    iget p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    const-string v0, "FollowerBrightnessStrategy"

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollowSlowChange:Z

    const/16 v1, 0xa

    invoke-static {v1, p1, v0, p0}, Lcom/android/server/display/brightness/BrightnessUtils;->constructDisplayBrightnessState(IFLjava/lang/String;Z)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method
