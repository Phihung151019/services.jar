.class public abstract synthetic Lcom/android/server/credentials/metrics/OemUiUsageStatus$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $SwitchMap$android$credentials$selection$IntentCreationResult$OemUiUsageStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->values()[Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/credentials/metrics/OemUiUsageStatus$1;->$SwitchMap$android$credentials$selection$IntentCreationResult$OemUiUsageStatus:[I

    :try_start_0
    sget-object v1, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->UNKNOWN:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {v1}, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/server/credentials/metrics/OemUiUsageStatus$1;->$SwitchMap$android$credentials$selection$IntentCreationResult$OemUiUsageStatus:[I

    sget-object v1, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->SUCCESS:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {v1}, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/server/credentials/metrics/OemUiUsageStatus$1;->$SwitchMap$android$credentials$selection$IntentCreationResult$OemUiUsageStatus:[I

    sget-object v1, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_NOT_SPECIFIED:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {v1}, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/android/server/credentials/metrics/OemUiUsageStatus$1;->$SwitchMap$android$credentials$selection$IntentCreationResult$OemUiUsageStatus:[I

    sget-object v1, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_BUT_NOT_FOUND:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {v1}, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/android/server/credentials/metrics/OemUiUsageStatus$1;->$SwitchMap$android$credentials$selection$IntentCreationResult$OemUiUsageStatus:[I

    sget-object v1, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_FOUND_BUT_NOT_ENABLED:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {v1}, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
