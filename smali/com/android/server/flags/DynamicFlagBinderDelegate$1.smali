.class public final Lcom/android/server/flags/DynamicFlagBinderDelegate$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;


# direct methods
.method public constructor <init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$1;->this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 5

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$1;->this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    iget-object v3, v3, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/flags/FlagCache;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$1;->this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    iget-object v3, v3, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/flags/FlagOverrideStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$1;->this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    iget-object v3, v3, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mFlagChangeCallback:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v4}, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;->onFlagChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
