.class Lcom/htc/calendar/widget/ComposeTitle$ContactObj;
.super Ljava/lang/Object;
.source "ComposeTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/widget/ComposeTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactObj"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field contact_id:I

.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle;


# direct methods
.method private constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter

    .prologue
    .line 2501
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactObj;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;Lcom/htc/calendar/widget/ComposeTitle$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2501
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle$ContactObj;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    return-void
.end method
