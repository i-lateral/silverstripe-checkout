<% require css('checkout/css/checkout.css') %>

<div class="content-container checkout-checkout typography">
    <h1>$Title</h1>

    <% if $CurrentMember && $CurrentMember.Addresses.exists %>
        <h2><%t Checkout.DeliverySavedAddress "Deliver to a saved address" %></h2>

        <div class="units-row line">
            <% loop $CurrentMember.Addresses %>
                <div class="unit size1of4 unit-25 col-xs-12 col-md-3">
                    <h3>$FirstName $Surname</h3>
                    <p>
                        $Address1<br/>
                        <% if $Address2 %>$Address2<br/><% end_if %>
                        $City<br/>
                        $PostCode<br/>
                        $Country
                    </p>

                    <p>
                        <a class="btn btn-green" href="{$Top.Link('usememberaddress')}/$ID/delivery">
                            <%t Checkout.UseThisAddress "Use this address" %>
                        </a>
                    </p>
                </div>
            <% end_loop %>
        </div>

        <hr/>

        <h2><%t Checkout.EnterDifferentAddress "Enter a different address" %></h2>
    <% end_if %>

    $Form
</div>
