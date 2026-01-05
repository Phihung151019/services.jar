.class public final Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final defaultMessage:Ljava/lang/String;

.field public final defaultValue:I

.field public final enforcedMessage:Ljava/lang/String;

.field public final policyMask:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;->policyMask:I

    iput p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;->defaultValue:I

    iput-object p3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;->defaultMessage:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;->enforcedMessage:Ljava/lang/String;

    return-void
.end method
