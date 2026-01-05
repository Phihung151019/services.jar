.class public final Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;

    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;->this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mScpmToken:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->-$$Nest$mtryRegister(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    invoke-static {p0}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->-$$Nest$mtryRegister(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
