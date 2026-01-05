.class public final Lcom/android/server/compat/OverrideValidatorImpl$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/compat/OverrideValidatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/compat/OverrideValidatorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/compat/OverrideValidatorImpl$SettingsObserver;->this$0:Lcom/android/server/compat/OverrideValidatorImpl;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/compat/OverrideValidatorImpl$SettingsObserver;->this$0:Lcom/android/server/compat/OverrideValidatorImpl;

    iget-object p1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "force_non_debuggable_final_build_for_compat"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    return-void
.end method
