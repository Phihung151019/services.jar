.class public abstract Lcom/android/server/enterprise/EnterpriseServiceConstants;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final KEY_CUSTOMIZE_INTENT_KEYPRESS:Ljava/util/List;

.field public static final KEY_CUSTOMIZE_KEYCODE:Ljava/util/List;

.field public static final KEY_CUSTOMIZE_KEYPRESS:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseServiceConstants;->KEY_CUSTOMIZE_KEYCODE:Ljava/util/List;

    new-instance v0, Lcom/android/server/enterprise/EnterpriseServiceConstants$2;

    invoke-direct {v0}, Lcom/android/server/enterprise/EnterpriseServiceConstants$2;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseServiceConstants;->KEY_CUSTOMIZE_KEYPRESS:Ljava/util/List;

    new-instance v0, Lcom/android/server/enterprise/EnterpriseServiceConstants$3;

    invoke-direct {v0}, Lcom/android/server/enterprise/EnterpriseServiceConstants$3;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseServiceConstants;->KEY_CUSTOMIZE_INTENT_KEYPRESS:Ljava/util/List;

    return-void
.end method
