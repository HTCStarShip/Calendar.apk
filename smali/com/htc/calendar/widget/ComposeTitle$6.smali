.class Lcom/htc/calendar/widget/ComposeTitle$6;
.super Ljava/lang/Object;
.source "ComposeTitle.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/widget/ComposeTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle;


# direct methods
.method constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$6;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1314
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$6;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$6;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mEdit_To:Landroid/widget/IMEAutoCompleteTextView;
    invoke-static {v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$1200(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/widget/IMEAutoCompleteTextView;

    move-result-object v1

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->showAutoCompleteButton(Landroid/widget/IMEAutoCompleteTextView;I)V
    invoke-static {v0, v1, p3}, Lcom/htc/calendar/widget/ComposeTitle;->access$1300(Lcom/htc/calendar/widget/ComposeTitle;Landroid/widget/IMEAutoCompleteTextView;I)V

    .line 1315
    return-void
.end method
