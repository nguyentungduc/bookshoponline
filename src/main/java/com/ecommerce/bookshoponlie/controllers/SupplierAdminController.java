package com.ecommerce.bookshoponlie.controllers;

import com.ecommerce.bookshoponlie.models.Publisher;
import com.ecommerce.bookshoponlie.models.Supplier;
import com.ecommerce.bookshoponlie.services.PublisherSerrviceImpl;
import com.ecommerce.bookshoponlie.services.SupplierServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/admincp/")
public class SupplierAdminController {
    SupplierServiceImpl supplierService = new SupplierServiceImpl();

    @RequestMapping(value = "supplier", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        List<Supplier> suppliers = supplierService.getAllSupplier(1);
        modelMap.addAttribute("suppliers",suppliers);
        return "admin.supplier";
    }
    @RequestMapping(value = "supplier/add", method = RequestMethod.GET, produces="application/json")
    public String show() {
        return "admin.supplier.add";
    }

    @RequestMapping(value ="supplier/add", method = RequestMethod.POST, produces="application/json")
    public String add(@ModelAttribute("supplier") Supplier supplier,RedirectAttributes ra) {
        supplier.setId(0);
        if(supplierService.addSupplier(supplier)) {
            ra.addFlashAttribute("msg", "Thêm thành công !");
        }else{
            ra.addFlashAttribute("msg", "Thêm thất bại !");
        }
        return "redirect:/admincp/supplier";
    }

    @RequestMapping(value = "supplier/delete/{id}", method = RequestMethod.GET, produces="application/json")
    public String delete(RedirectAttributes ra, @PathVariable("id") int id) {
        System.out.println("ID: "+id);
        if(supplierService.deleteSupplier(id)){
            ra.addFlashAttribute("msg", "Xóa thành công !");
        }else{
            ra.addFlashAttribute("msg", "Xóa thành công !");
        }
        return "redirect:/admincp/supplier";
    }
    @RequestMapping(value = "supplier/{id}", method = RequestMethod.GET, produces="application/json")
    public String edit(ModelMap modelMap, @PathVariable("id") int id) {
        Supplier supplier = supplierService.getById(id);
        modelMap.addAttribute("supplier",supplier);
        return "admin.supplier.edit";
    }
    @RequestMapping(value = "supplier/edit", method = RequestMethod.POST, produces="application/json")
    public String edit(@ModelAttribute("supplier") Supplier supplier, ModelMap modelMap, RedirectAttributes ra) {
        try {
            supplierService.updateSupplier(supplier);
            ra.addFlashAttribute("msg", "Sửa thành công !");
        }catch (Exception e){
            ra.addFlashAttribute("msg", "Sửa thất bại !");
            e.printStackTrace();
        }
        return "redirect:/admincp/supplier";
    }
}