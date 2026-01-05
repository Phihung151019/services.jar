.class public interface abstract Lcom/android/server/display/mode/Vote;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;
    .locals 3

    new-instance v0, Lcom/android/server/display/mode/CombinedVote;

    new-instance v1, Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    new-instance v2, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v2, p0}, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;-><init>(Z)V

    invoke-static {v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/CombinedVote;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static forPolicyRate(FF)Lcom/android/server/display/mode/Vote;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    move-result-object p0

    return-object p0
.end method

.method public static forSizeAndPhysicalRefreshRatesRange(IIIIFF)Lcom/android/server/display/mode/CombinedVote;
    .locals 2

    new-instance v0, Lcom/android/server/display/mode/CombinedVote;

    new-instance v1, Lcom/android/server/display/mode/SizeVote;

    invoke-direct {v1, p2, p3, p0, p1}, Lcom/android/server/display/mode/SizeVote;-><init>(IIII)V

    new-instance p0, Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;

    invoke-direct {p0, p4, p5}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    new-instance p1, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;

    cmpl-float p2, p4, p5

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p1, p2}, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;-><init>(Z)V

    invoke-static {v1, p0, p1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/CombinedVote;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static forSupportedRefreshRates(Ljava/util/List;)Lcom/android/server/display/mode/SupportedRefreshRatesVote;
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/config/SupportedModeData;

    new-instance v2, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;

    iget v3, v1, Lcom/android/server/display/config/SupportedModeData;->refreshRate:F

    iget v1, v1, Lcom/android/server/display/config/SupportedModeData;->vsyncRate:F

    invoke-direct {v2, v3, v1}, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;-><init>(FF)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote;

    invoke-direct {p0, v0}, Lcom/android/server/display/mode/SupportedRefreshRatesVote;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static priorityToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "PRIORITY_UDFPS"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "PRIORITY_PROXIMITY"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "PRIORITY_SKIN_TEMPERATURE"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "PRIORITY_FLICKER_REFRESH_RATE_SWITCH"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "PRIORITY_LOW_POWER_MODE_RENDER_RATE"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "PRIORITY_LOW_POWER_MODE_MODES"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "PRIORITY_SYSTEM_REQUESTED_MODES"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "PRIORITY_LAYOUT_LIMITED_FRAME_RATE"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "PRIORITY_LAYOUT_LIMITED_REFRESH_RATE"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "PRIORITY_AUTH_OPTIMIZER_RENDER_FRAME_RATE"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "PRIORITY_LIMIT_MODE"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "PRIORITY_SYNCHRONIZED_RENDER_FRAME_RATE"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "PRIORITY_SYNCHRONIZED_REFRESH_RATE"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "PRIORITY_USER_SETTING_PEAK_RENDER_FRAME_RATE"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "PRIORITY_RESOLUTION"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "PRIORITY_REFRESH_RATE_MODE"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "PRIORITY_USER_SETTING_PEAK_REFRESH_RATE"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "PRIORITY_REJECTED_MODES"

    return-object p0

    :pswitch_12
    const-string/jumbo p0, "PRIORITY_APP_REQUEST_SIZE"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "PRIORITY_APP_REQUEST_BASE_MODE_REFRESH_RATE"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "PRIORITY_APP_REQUEST_RENDER_FRAME_RATE_RANGE"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "PRIORITY_USER_SETTING_DISPLAY_PREFERRED_SIZE"

    return-object p0

    :pswitch_16
    const-string/jumbo p0, "PRIORITY_USER_SETTING_MIN_RENDER_FRAME_RATE"

    return-object p0

    :pswitch_17
    const-string/jumbo p0, "PRIORITY_HIGH_BRIGHTNESS_MODE"

    return-object p0

    :pswitch_18
    const-string/jumbo p0, "PRIORITY_FLICKER_REFRESH_RATE"

    return-object p0

    :pswitch_19
    const-string/jumbo p0, "PRIORITY_REFRESH_RATE_MIN_LIMIT"

    return-object p0

    :pswitch_1a
    const-string/jumbo p0, "PRIORITY_REFRESH_RATE_MAX_LIMIT"

    return-object p0

    :pswitch_1b
    const-string/jumbo p0, "PRIORITY_DEFAULT_REFRESH_RATE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract updateSummary(Lcom/android/server/display/mode/VoteSummary;)V
.end method
