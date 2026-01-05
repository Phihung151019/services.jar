.class public final synthetic Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiWindowSupportPolicyController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiWindowSupportPolicyController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isIgnoreDevSettingForNonResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mIgnoreDevSettingForNonResizable:Z

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->checkSupportPolicyLocked(ILjava/lang/String;)I

    move-result p0

    iput p0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    return-void
.end method
