.class public Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;
.super Ljava/lang/Object;
.source "ComposeTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/widget/ComposeTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mailaddress"
.end annotation


# instance fields
.field public mContactId:I

.field public mDisplayName:Ljava/lang/String;

.field public mEmail:Ljava/lang/String;

.field public mRowContactId:I

.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1419
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 1421
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mEmail:Ljava/lang/String;

    .line 1425
    iput v1, p0, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mContactId:I

    .line 1426
    iput v1, p0, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mRowContactId:I

    return-void
.end method
