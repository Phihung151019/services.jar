.class Lcom/samsung/android/server/hwrs/samba/ServerConfiguration$2;
.super Ljava/util/HashMap;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/hwrs/samba/ServerConfiguration;

.field final synthetic val$aGroupName:Ljava/lang/String;

.field final synthetic val$aMaxConnections:Ljava/lang/String;

.field final synthetic val$aResPath:Ljava/lang/String;

.field final synthetic val$aUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/hwrs/samba/ServerConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/samba/ServerConfiguration$2;->this$0:Lcom/samsung/android/server/hwrs/samba/ServerConfiguration;

    iput-object p2, p0, Lcom/samsung/android/server/hwrs/samba/ServerConfiguration$2;->val$aResPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/server/hwrs/samba/ServerConfiguration$2;->val$aUserName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/server/hwrs/samba/ServerConfiguration$2;->val$aGroupName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/server/hwrs/samba/ServerConfiguration$2;->val$aMaxConnections:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo p1, "path"

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "force user"

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "force group"

    invoke-virtual {p0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "max connections"

    invoke-virtual {p0, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "read only"

    const-string/jumbo p2, "no"

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
