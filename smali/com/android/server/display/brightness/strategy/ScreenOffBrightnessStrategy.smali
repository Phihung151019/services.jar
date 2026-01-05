.class public final Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "ScreenOffBrightnessStrategy"

    return-object p0
.end method

.method public final getReason()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 0

    return-void
.end method

.method public final updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 2

    const/4 p0, 0x0

    const/4 p1, 0x5

    const/high16 v0, -0x40800000    # -1.0f

    const-string/jumbo v1, "ScreenOffBrightnessStrategy"

    invoke-static {p1, v0, v1, p0}, Lcom/android/server/display/brightness/BrightnessUtils;->constructDisplayBrightnessState(IFLjava/lang/String;Z)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method
