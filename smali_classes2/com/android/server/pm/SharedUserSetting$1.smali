.class public final Lcom/android/server/pm/SharedUserSetting$1;
.super Lcom/android/server/utils/Watcher;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/SharedUserSetting;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/SharedUserSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting$1;->this$0:Lcom/android/server/pm/SharedUserSetting;

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting$1;->this$0:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void
.end method
