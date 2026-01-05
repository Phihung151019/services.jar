.class public final Lcom/android/server/am/SettingsToPropertiesMapper$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/SettingsToPropertiesMapper;

.field public final synthetic val$globalSetting:Ljava/lang/String;

.field public final synthetic val$propName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/SettingsToPropertiesMapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->this$0:Lcom/android/server/am/SettingsToPropertiesMapper;

    iput-object p2, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->val$globalSetting:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->val$propName:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->this$0:Lcom/android/server/am/SettingsToPropertiesMapper;

    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->val$globalSetting:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->val$propName:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
