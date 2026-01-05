.class public final synthetic Lcom/android/server/appop/DiscreteOpsRegistry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appop/DiscreteOpsXmlRegistry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/DiscreteOpsXmlRegistry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsRegistry$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsRegistry$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteOpsRegistry;->setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
